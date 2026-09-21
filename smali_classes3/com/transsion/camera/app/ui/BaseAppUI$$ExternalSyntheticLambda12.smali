.class public final synthetic Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;->f$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$$ExternalSyntheticLambda12;->f$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->$r8$lambda$Gcy9UCr0JLrTrZPSjbRj55BbBOg(Lcom/transsion/camera/app/ui/BaseAppUI;)Z

    move-result p0

    return p0
.end method
