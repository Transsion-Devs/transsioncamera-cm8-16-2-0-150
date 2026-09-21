.class public abstract Lcom/ss/ugc/effectplatform/util/GetSettingDirKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getSettingDir(Lcom/ss/ugc/effectplatform/EffectConfig;)Ljava/lang/String;
    .registers 2

    const-string v0, "effectConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string p0, ""

    return-object p0
.end method
