.class public final synthetic Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    check-cast p2, Landroid/view/MotionEvent;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->$r8$lambda$vupKij4FkKAGyLdhCcB7PYEX4EQ(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Ljava/lang/String;Landroid/view/MotionEvent;)V

    return-void
.end method
