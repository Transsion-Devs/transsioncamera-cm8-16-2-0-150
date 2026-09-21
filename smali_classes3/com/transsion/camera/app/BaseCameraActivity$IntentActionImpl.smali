.class Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$IIntentAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentActionImpl"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Intent;)V
    .registers 3

    .line 2002
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2003
    iput-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getSourceIntent()Landroid/content/Intent;
    .registers 1

    .line 2007
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public onResult(ILandroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_8

    .line 2013
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_d

    .line 2015
    :cond_8
    iget-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 2017
    :goto_d
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 2019
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "[onResult] SecurityException "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public transferIntent(Landroid/content/Intent;I)V
    .registers 3

    .line 2026
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
