.class public final synthetic Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/SecureCameraActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/SecureCameraActivity;->$r8$lambda$fDwcCzzd-HIwZI0ZmeT8WKRKTIM(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V

    return-void
.end method
