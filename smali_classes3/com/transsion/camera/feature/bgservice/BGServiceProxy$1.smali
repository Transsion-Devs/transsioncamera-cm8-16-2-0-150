.class Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getHIDLEventCallback()Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(III)Z
    .registers 6

    .line 120
    invoke-static {}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompleted() called with: imgReaderId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], frameNumber = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], status = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCompleted(IIIJII)Z
    .registers 11

    .line 111
    invoke-static {}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleted() called with: imgReaderId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], frameNumber = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], status = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], timestamp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], extra1 = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "], extra2 = ["

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "]"

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object p6, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {p6}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->-$$Nest$fgetmEventCallBack(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    move-result-object p6

    if-eqz p6, :cond_5f

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->-$$Nest$fgetmEventCallBack(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    move-result-object p0

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    new-instance p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    invoke-direct/range {p1 .. p6}, Lcom/transsion/camera/app/common/bgservice/BgEvent;-><init>(IIIJ)V

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;->onEventCompleted(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V

    :cond_5f
    const/4 p0, 0x1

    return p0
.end method
