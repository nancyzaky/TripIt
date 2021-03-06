import React, { useState, useEffect } from "react";
import { useParams, Link } from "react-router-dom";
import { RiParkingLine } from "react-icons/ri";
import { CgGym } from "react-icons/cg";
import { GrSwim } from "react-icons/gr";
import { AiFillCar } from "react-icons/ai";
import { Load } from "./Load";
import Map from "./Map";
import HotelSlide from "./HotelSlide";

const Details = () => {
  const [pics, setPics] = useState([]);
  // const [hotelViews, setHotelViews] = useState([]);
  const [loading, setLoading] = useState(true);
  const [features, setFeatures] = useState({});
  const [lat, setLat] = useState(0);
  const [long, setLong] = useState(0);
  const [address, setAddress] = useState("");
  const [error, setError] = useState("");
  let { id } = useParams();
  const fetchUrl = () => {
    setLoading(false);
    fetch(`/api/hotels/${id}`).then((resp) => {
      if (resp.ok) {
        resp.json().then((d) => {
          setPics([...d.views, ...d.pictures]);
          setLoading(true);
          if (d.feature) {
            setFeatures(d.feature);
          }
          setLat(d.lat);
          setLong(d.long);
          setAddress(d.location);
        });
      } else {
        resp.json().then((d) => setError(d.error));
      }
    });
  };
  useEffect(() => {
    fetchUrl();
  }, [id]);
  return (
    <>
      {error.length > 0 && <h1>{error}</h1>}

      {!error && (
        <li className="single-hotel">
          <ul className="list">
            <li className="list-items">
              <Link to={`/hotel/${id}/rooms`}>Rooms</Link>
            </li>
            {/* <li className="list-items">
              <Link to={`/hotel/${id}/flights`}>Flights</Link>
            </li> */}
            <li className="list-items">
              <Link to={`/hotel/${id}/weather`}>Weather</Link>
            </li>
            <li className="list-items">
              <a
                href="https://www.cdc.gov/coronavirus/2019-ncov/travelers/map-and-travel-notices.html"
                target="_blank"
              >
                Travel Restrictions
              </a>
            </li>
            <li className="list-items">
              <Link to={`/hotel/${id}/attractions`}>Attractions</Link>
            </li>
          </ul>
          <section style={{ width: "60%" }}>
            <HotelSlide pics={pics} key={id} />
            <br></br>
          </section>
          <ul className="features-cont">
            <li className="features-list">
              <h4 style={{ color: "grey" }}>Hotel Features:</h4>
            </li>
            <li className="features-list">
              <span>parking</span> {features.parking && <AiFillCar />}
            </li>
            <li className="features-list">
              <span>Gym</span>
              {features.gym && <CgGym />}
            </li>
            <li className="features-list">
              <span>Pool</span>
              {features.pool && <GrSwim />}
            </li>
          </ul>
          {/* <hr className="big-line"></hr> */}
          <section>
            {/* <Map lat={lat} long={long} address={address} /> */}
            {/* <hr className="big-line"></hr> */}
          </section>{" "}
          {/* </div> */}
        </li>
      )}
    </>
  );
};

export default Details;
