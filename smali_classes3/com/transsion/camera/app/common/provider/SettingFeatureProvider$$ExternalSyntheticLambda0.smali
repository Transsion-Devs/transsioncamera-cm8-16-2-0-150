.class public final synthetic Lcom/transsion/camera/app/common/provider/SettingFeatureProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->$r8$lambda$p-PJZvDlLXqMElP_zIvZ0NPK0I4(Ljava/lang/Long;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
