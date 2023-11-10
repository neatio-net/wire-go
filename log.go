package wire

import (
	"github.com/neatio-net/logger-go"
)

var log = logger.New("module", "binary")

func init() {
	log.SetHandler(
		logger.LvlFilterHandler(
			logger.LvlWarn,
			//logger.LvlDebug,
			logger.MainHandler(),
		),
	)
}
