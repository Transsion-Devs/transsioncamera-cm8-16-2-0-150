.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->$r8$lambda$IZRfy8q59ckToA4b7ThQYstzzeA(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method
