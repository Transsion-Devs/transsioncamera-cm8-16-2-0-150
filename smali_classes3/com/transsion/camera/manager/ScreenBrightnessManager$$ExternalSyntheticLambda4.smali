.class public final synthetic Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/manager/ScreenBrightnessManager;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    iput-object p2, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    iput p3, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/manager/ScreenBrightnessManager;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    iget p0, p0, Lcom/transsion/camera/manager/ScreenBrightnessManager$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->$r8$lambda$0UvNKfmyGHV8CCrMh8Ea7VaZ26Q(Lcom/transsion/camera/manager/ScreenBrightnessManager;Landroid/app/Activity;I)V

    return-void
.end method
