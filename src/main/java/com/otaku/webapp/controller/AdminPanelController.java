package com.otaku.webapp.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.otaku.webapp.dto.ProductDTO;
import com.otaku.webapp.entity.Category;
import com.otaku.webapp.entity.Color;
import com.otaku.webapp.entity.Products;
import com.otaku.webapp.entity.Size;
import com.otaku.webapp.model.Product;
import com.otaku.webapp.service.FileUploadService;
import com.otaku.webapp.service.ProductService;
import com.otaku.webapp.util.HibernateUtil;
import jakarta.inject.Inject;
import jakarta.servlet.ServletContext;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.media.multipart.ContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.server.mvc.Viewable;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Path("/admin-panel")
public class AdminPanelController {

    @Context
    private ServletContext context;

    @Inject
    ProductService productService;

    Session session = HibernateUtil.getSessionFactory().openSession();
    Transaction transaction = session.beginTransaction();

    private static final ObjectMapper mapper = new ObjectMapper();

    @GET
    public Viewable goToAdminPanel(){
        return new Viewable("/backend/admin/html/index");
    }

    @GET
    @Path("/product-dashboard")
    public Viewable goToManageProducts(){
        return new Viewable("/backend/admin/html/product-dashboard");
    }

    @GET
    @Path("/add-product")
    public Viewable goToAddProduct(){
        return new Viewable("/backend/admin/html/add-product");
    }



    @Path("/add-product/{pid}/upload-image")
    @POST
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @Produces(MediaType.APPLICATION_JSON)
    public Response upload(@PathParam("pid") Long pid, @FormDataParam("file[]") FormDataBodyPart body) {

        List<FileUploadService.FileItem> items = new ArrayList<>();
        FileUploadService uploadService = new FileUploadService(context);
        ProductService productService = new ProductService();
        Products product = productService.getProductById(pid);

        body.getParent().getBodyParts().forEach(part -> {
            InputStream is = part.getEntityAs(InputStream.class);
            ContentDisposition meta = part.getContentDisposition();
            FileUploadService.FileItem fileItem = uploadService.uploadWithDirectory("product/" + pid, is, meta);
            items.add(fileItem);
            product.getImages().add(fileItem.getPath());

            System.out.println(meta);
        });

        productService.update(product);
        return Response.ok().entity(items).build();
    }


    @POST
    @Path("/add-product")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response addProduct(ProductDTO productDTO){

        System.out.println("post");
        String product_name = productDTO.getName();
        String product_description = productDTO.getDescription();
        Double product_price = productDTO.getPrice();
        Integer product_category = productDTO.getCategory_id();
        Integer product_color = productDTO.getColor_id();
        Integer product_size = productDTO.getSize_id();

        Category product_category_id = ProductService.getCategoryById(Integer.valueOf(product_category));
        Size product_size_id = ProductService.getSizeById(Integer.valueOf(product_size));
        Color product_color_id = ProductService.getColorById(Integer.valueOf(product_color));


        Products products = new Products();
        products.setName(product_name);
        products.setDescription(product_description);
        products.setPrice(product_price);
        products.setCategory(product_category_id);
        products.setColor(product_color_id);
        products.setSize(product_size_id);

        productService.save(products);

        System.out.println(products.getId());

        ObjectNode jsonNodes = mapper.createObjectNode();
        jsonNodes.put("productId",products.getId());

        return Response.ok().entity(jsonNodes).build();
    }

    @GET
    @Path("/update-product")
    public Viewable goToUpdateProduct(@QueryParam("id") String id){
        return new Viewable("/backend/admin/html/update-product",id);
    }


    @PUT
    @Path("/update-product")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateProduct(ProductDTO productDTO){

        System.out.println("put");

        Long id = productDTO.getId();
        String product_name = productDTO.getName();
        String product_description = productDTO.getDescription();
        Double product_price = productDTO.getPrice();
        Integer product_category = productDTO.getCategory_id();
        Integer product_color = productDTO.getColor_id();
        Integer product_size = productDTO.getSize_id();

        System.out.println(id);

        Category product_category_id = ProductService.getCategoryById(Integer.valueOf(product_category));
        Size product_size_id = ProductService.getSizeById(Integer.valueOf(product_size));
        Color product_color_id = ProductService.getColorById(Integer.valueOf(product_color));

        Products products = session.find(Products.class,id);

        products.setName(product_name);
        products.setDescription(product_description);
        products.setPrice(product_price);
        products.setCategory(product_category_id);
        products.setColor(product_color_id);
        products.setSize(product_size_id);

        transaction.commit();
        session.close();

        return Response.ok().build();
    }
}
