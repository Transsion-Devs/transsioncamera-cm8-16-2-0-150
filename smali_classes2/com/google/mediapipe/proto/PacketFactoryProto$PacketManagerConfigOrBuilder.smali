.class public interface abstract Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfigOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketFactoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PacketManagerConfigOrBuilder"
.end annotation


# virtual methods
.method public abstract getPacket(I)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
.end method

.method public abstract getPacketCount()I
.end method

.method public abstract getPacketList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation
.end method
