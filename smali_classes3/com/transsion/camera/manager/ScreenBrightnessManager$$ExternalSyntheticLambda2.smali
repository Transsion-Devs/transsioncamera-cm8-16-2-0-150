.class public final synthetic Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/manager/ScreenBrightnessManager;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    iput-object p2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->$r8$lambda$AOhy3ZCUb7cv08y4K9dqml8vubs(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;)V

    return-void
.end method
