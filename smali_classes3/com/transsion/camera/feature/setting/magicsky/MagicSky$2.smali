.class Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/magicsky/MagicSky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 43
    const-string v0, "key_magic_sky_detection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->setDetectResult(Z)V

    :cond_11
    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 40
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
