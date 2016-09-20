import celu.*
object fixture {

method crearCeluWatsappRepMusica(){
	s3mini.agregarApp(self.crearWatsappCon2Conv())
	s3mini.agregarApp(self.crearRepMusica30Temas())
	return s3mini
}
method crearWatsappCon2Conv(){
	return new RedSocial(40,2,5)
}

method crearTelegramCon5Conv(){
	return new RedSocial(30,5,4)
}

method crearRepMusica30Temas(){
	return new Reproductor(30,50,2)
}
method crearYouTube10Temas(){
	return new Reproductor(10,100,6)
}

method crearCeluYouTubeCalculudora() {
	s3mini.agregarApp(self.crearYouTube10Temas())
	s3mini.agregarApp(calculadora)
	return s3mini
}

method crearCeluTelegramYouTube(){
	s3mini.agregarApp(self.crearYouTube10Temas())
	s3mini.agregarApp(self.crearTelegramCon5Conv())
	return s3mini
}

method crearCeluRedesSocialesIniciales(){
	s3mini.agregarApp(new RedSocial(40,5))
	s3mini.agregarApp(new RedSocial(30,100))
	s3mini.agregarApp(new RedSocial(1,1))
	return s3mini
}
}