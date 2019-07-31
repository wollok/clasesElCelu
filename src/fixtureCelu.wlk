import celu.*

object fixtureCelu {

	method crearCeluWatsappRepMusica() {
		s3mini.agregarApp(self.crearWatsappCon2Conv())
		s3mini.agregarApp(self.crearRepMusica30Temas())
		return s3mini
	}

	method crearWatsappCon2Conv() {
		return new RedSocial(base = 40, valorUnitario = 2, conversaciones = 5)
	}

	method crearTelegramCon5Conv() {
		return new RedSocial(base = 30, valorUnitario = 5, conversaciones = 4)
	}

	method crearRepMusica30Temas() {
		return new Reproductor(cantidad = 30, tope = 50, valorUnitario = 2)
	}

	method crearYouTube10Temas() {
		return new Reproductor(cantidad = 10, tope = 100, valorUnitario = 6)
	}

	method crearCeluYouTubeCalculudora() {
		s3mini.agregarApp(self.crearYouTube10Temas())
		s3mini.agregarApp(calculadora)
		return s3mini
	}

	method crearCeluTelegramYouTube() {
		s3mini.agregarApp(self.crearYouTube10Temas())
		s3mini.agregarApp(self.crearTelegramCon5Conv())
		return s3mini
	}

	method crearCeluRedesSocialesIniciales() {
		s3mini.agregarApp(new RedSocial(base = 40, valorUnitario = 5))
		s3mini.agregarApp(new RedSocial(base = 30, valorUnitario = 100))
		s3mini.agregarApp(new RedSocial(base = 1, valorUnitario = 1))
		return s3mini
	}

}

