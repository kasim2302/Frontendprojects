import "../assets/css/style.css";
const Chennai = () => {
  return (
    <>
    <div className="chennai">
      <Navbar />
      <ITCompanies />
    </div>
     
    </>
  );
};
export default Chennai;

export const Navbar = () => {
  return (
    <>
      <div className="Nav">
        <div className="logo">
          <h3>Cities</h3>
        </div>
        <div className="links">
          <a href="#">Chennai</a>
          <a href="#">Kerala</a>
          <a href="#">Karnataka</a>
        </div>
      </div>
    </>
  );
};
export const ITCompanies = () => {
  return (
    <>
      <div className="Companies">
        <div>
          <h2>IT Companies in Chennai</h2>
        </div>
        <div>
          <p>
            Chennai's IT sector is characterized by a diverse ecosystem of both
            multinational giants and innovative startups, offering a wide range
            of services including software development, digital transformation,
            AI, and consulting. Major companies like TCS, Infosys, and Cognizant
            have a significant presence, while product-based companies like Zoho
            and Freshworks, both headquartered in the city, have achieved global
            success in SaaS and customer engagement. The sector is supported by
            strong infrastructure and a large talent pool, with a focus on
            emerging technologies and startup growth
          </p>
        </div>

        <div>
          <ul>
            <li>Tata Consultancy Services</li>
            <li>Infosys </li>
            <li>Cognizant</li>
            <li>Wipro </li>
            <li>CapGemini </li>
            <li>Tech Mahendra</li>
            <li>HCL Tchnologies</li>
          </ul>
        </div>
      </div>
      <Robotics />
    </>
  );
};

export const Robotics = () => {
  return (
    <>
      <div className="robotics"> 
        <h2>Robotics</h2>
        <p>
          Robotics is an interdisciplinary field of science and engineering
          dedicated to the design, construction, operation, and use of
          mechanical machines called robots. The primary objective of robotics
          is to create intelligent machines that can assist humans, often by
          performing tasks that are repetitive, dangerous, or conducted in
          extreme environments that are inaccessible to people.{" "}
        </p>
      </div>
    </>
  );
};
