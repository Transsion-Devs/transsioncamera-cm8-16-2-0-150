.class Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/tzservice/TZServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V
    .registers 6

    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SaveEnd(High)"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundImageSaveCompleted[HIGH]: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-object p3, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v0

    if-nez p2, :cond_42

    const/4 p1, 0x4

    goto :goto_43

    :cond_42
    const/4 p1, 0x5

    :goto_43
    const/4 p2, 0x2

    invoke-virtual {p3, v0, v1, p2, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->setTZCapConfig(JII)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmShot2ShotCallback(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmShot2ShotCallback(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmShot2ShotCallback(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->saveHighQualityJpegDone()V

    .line 81
    :cond_6a
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public varargs onBackgroundImageSaveProgressed(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;[Ljava/lang/Object;)V
    .registers 4

    .line 69
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBackgroundImageSaveProgressed[HIGH]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onBackgroundImageSaveStarted(J)V
    .registers 5

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SaveBegin(High)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundImageSaveStarted[HIGH]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method
