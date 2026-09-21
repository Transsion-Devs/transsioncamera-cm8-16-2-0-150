.class Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$2;
.super Lvendor/mediatek/hardware/camera/bgservice/V1_1/IEventCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->setEventCallback(ILcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;

.field final synthetic val$arg1:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$2;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;

    iput-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$2;->val$arg1:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;

    invoke-direct {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_1/IEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(III)Z
    .registers 4

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$2;->val$arg1:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;->onCompleted(III)Z

    move-result p0

    return p0
.end method

.method public onCompleted_1_1(IIIJII)Z
    .registers 8

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$2;->val$arg1:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;

    invoke-interface/range {p0 .. p7}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;->onCompleted(IIIJII)Z

    move-result p0

    return p0
.end method
