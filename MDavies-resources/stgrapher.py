g = gnu()

lg = log("log.run")

s,t = lg.get("Step", "Temp")

g.plot(s,t)

g.save("st.png")

g.stop()
exit()
