.class public final synthetic Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/CameraApplication;

.field public final synthetic f$1:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/CameraApplication;

    iput-object p2, p0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;->f$1:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/CameraApplication;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;->f$1:Landroid/content/res/Resources;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/CameraApplication;->$r8$lambda$nSDuVIlxsv_NkX2dUqkaik4Poyg(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    return-void
.end method
