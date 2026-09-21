.class Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$2;
.super Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->setEventCallback(ILcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;

.field final synthetic val$callback:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$2;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;

    iput-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$2;->val$callback:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;

    invoke-direct {p0}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 93
    const-string p0, "5e0ab289c3f80efd863c7d5e5faf4c0b9368d001"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onCompleted(IIIJII)Z
    .registers 8

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$2;->val$callback:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;

    invoke-interface/range {p0 .. p7}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;->onCompleted(IIIJII)Z

    move-result p0

    return p0
.end method
