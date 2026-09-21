.class Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private final mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;Landroid/os/Looper;)V
    .registers 3

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;Landroid/os/Looper;)V

    return-void
.end method

.method private performWideSelfieCallback(Landroid/os/Message;)V
    .registers 4

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->-$$Nest$fgetmWideSelfieCallback(Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;)Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    move-result-object p0

    if-nez p0, :cond_12

    .line 177
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "callback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    if-nez v1, :cond_22

    .line 181
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid result!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_22
    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;->onProcessResult(ILcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 168
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$EventHandler;->performWideSelfieCallback(Landroid/os/Message;)V

    return-void

    .line 170
    :cond_c
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
