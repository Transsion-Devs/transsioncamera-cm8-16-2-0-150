.class public Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$IIntentProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 2030
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivityForResult(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V
    .registers 3

    .line 2033
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmActivityResultCallback(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V

    .line 2034
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->getRequestCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
