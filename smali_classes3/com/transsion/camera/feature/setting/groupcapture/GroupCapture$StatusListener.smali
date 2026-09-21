.class Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;-><init>(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 85
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture$StatusListener;->this$0:Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;->-$$Nest$monCaptureStateChanged(Lcom/transsion/camera/feature/setting/groupcapture/GroupCapture;Ljava/lang/String;)V

    return-void
.end method
