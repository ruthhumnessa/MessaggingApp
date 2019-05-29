package com.team.PharmacyProject;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class Sender implements CommandLineRunner{
	
private final RabbitTemplate rabbitTemplate;
private final String topicExchangeName = "ruth";

public Sender(RabbitTemplate rabbitTemplate) {
	this.rabbitTemplate = rabbitTemplate;
}

@Override
public void run(String... args) throws Exception {
	Lab113 lab113 = new Lab113("this is lab113");
	System.out.println("Sending message...");
	rabbitTemplate.convertAndSend(topicExchangeName, "lab1.webprogramming", lab113);
	
}


}
