import { request } from "express";
import { Postagem } from "../Models/PostModel.js";

export class PostController{

    static async selectPost(req, res){
        try {
            const postagem = await Postagem.ListarPost()
            return res.status(200).json(postagem)
        }
        catch (err)
        {
            console.log("Erro no usuarioController | selectPostagem | " + err)
            return res.status(500).json(err)
        }
    };

    static async IncertPost(req,res){
        try{
            const {tituloPost, textPost } = req.body
            const postnovo = await new Postagem(tituloPost,textPost).IncertPost();
            return res.status(200).json(postnovo);
        }
        catch(err){
            console.log("error controller IncertPost : " + err)
            return res.status(500).json(err)
        };   
    }    
}
