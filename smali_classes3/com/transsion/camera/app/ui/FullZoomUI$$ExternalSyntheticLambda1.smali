.class public final synthetic Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/FullZoomUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/FullZoomUI;->$r8$lambda$xCLQz4lUZTbMVSrx6dbLVwtOKtQ(Lcom/transsion/camera/app/ui/FullZoomUI;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
