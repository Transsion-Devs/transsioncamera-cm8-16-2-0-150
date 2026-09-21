.class public final synthetic Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/BaseCameraActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda11;->f$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda11;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda11;->f$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda11;->f$1:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity;->$r8$lambda$ucA1t1pCshkD2OFL68vOchfb_3I(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;)V

    return-void
.end method
