.class public final synthetic Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/FullZoomUI;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iget p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->$r8$lambda$BMjczILhqF8YuUmg0AFIqyeuxNY(Lcom/transsion/camera/app/ui/FullZoomUI;I)V

    return-void
.end method
