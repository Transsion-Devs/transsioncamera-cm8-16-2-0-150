.class Lcom/transsion/camera/app/PortraitReviewActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/PortraitReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/PortraitReviewActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/PortraitReviewActivity;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/app/PortraitReviewActivity$1;->this$0:Lcom/transsion/camera/app/PortraitReviewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/PortraitReviewActivity$1;->this$0:Lcom/transsion/camera/app/PortraitReviewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
