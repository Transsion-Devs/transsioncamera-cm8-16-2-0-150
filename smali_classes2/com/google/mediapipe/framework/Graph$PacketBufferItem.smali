.class Lcom/google/mediapipe/framework/Graph$PacketBufferItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PacketBufferItem"
.end annotation


# instance fields
.field final packet:Lcom/google/mediapipe/framework/Packet;

.field final timestamp:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/framework/Packet;Ljava/lang/Long;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->packet:Lcom/google/mediapipe/framework/Packet;

    .line 55
    iput-object p2, p0, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/framework/Packet;Ljava/lang/Long;Lcom/google/mediapipe/framework/Graph$1;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;-><init>(Lcom/google/mediapipe/framework/Packet;Ljava/lang/Long;)V

    return-void
.end method
