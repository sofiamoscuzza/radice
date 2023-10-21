var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  novedades = novedades.splice(0, 5); //seleccionamos los 5 primeros elementos del array

  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
        const imagen = cloudinary.url(novedad.img_id, {
            width: 460,
            crop: 'fill'
        });
        return {
            ...novedad, 
            imagen
        };
    } else {
        return {
            ...novedad, 
            imagen: '/images/noimage.jpg' 
        };
    }
    });

  res.render('index', {
    //title: 'Express',
    novedades
  });
});

router.post('/', async (req, res, next) => {

  console.log(req.body)

  var name = req.body.name;
  var surname = req.body.surname;
  var email = req.body.email;
  var tel = req.body.tel;
  var mensaje = req.body.mensaje;

var obj = {
  to: 'sofimoscuzza@hotmail.com',
  subject: "Contacto desde la web",
  html: name + "" + surname + "se contacto y quiere mas info a este correo: " + email + mensaje + ".<br> Su tel es " + tel
};

var transporter = nodemailer.createTransport({
  host: process.env.SMTP_HOST,
  port: process.env.SMTP_PORT,
  auth: {
    user: process.env.SMTP_USER,
    pass: process.env.SMTP_PASS,
  },
  });

  varinfo = await transporter.sendMail(obj),

  res.render('index', {
    message: 'Mensaje enviado correctamente'
  });
});

module.exports = router;