.class public final synthetic Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/zoom/Zoom5;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->$r8$lambda$0ZgfcHw41YOnnLrQPlG-5OzqpWY(Lcom/transsion/camera/feature/setting/zoom/Zoom5;Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)V

    return-void
.end method
