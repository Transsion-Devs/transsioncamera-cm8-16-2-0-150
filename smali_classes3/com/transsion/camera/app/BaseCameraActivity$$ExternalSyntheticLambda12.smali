.class public final synthetic Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/BaseCameraActivity;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Landroid/content/Intent;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$4:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$3:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda12;->f$4:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/camera/app/BaseCameraActivity;->$r8$lambda$cwUIxirskgBmyeZWE6WBYJgIg28(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/net/Uri;Landroid/content/Intent;Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method
