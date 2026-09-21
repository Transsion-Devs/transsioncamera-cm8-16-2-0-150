.class public final synthetic Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

.field public final synthetic f$1:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Landroid/util/Size;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;->f$1:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;->f$1:Landroid/util/Size;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->$r8$lambda$MDfk3tMafXGPVFCfPtDHcX02DPc(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Landroid/util/Size;)V

    return-void
.end method
