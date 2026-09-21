.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->setAppName(Ljava/lang/String;)V

    return-void
.end method
