.class public final Lcom/cutsame/solution/init/CutSameSolution;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

.field public static final TAG:Ljava/lang/String; = "CutSameSolution"

.field public static application:Landroid/app/Application;

.field public static authorityConfig:Lcom/cutsame/solution/config/AuthorityConfig;

.field public static final cutSameGamePlay$delegate:Lkotlin/Lazy;

.field public static effectFetcherConfig:Lcom/cutsame/solution/config/EffectFetcherConfig;

.field public static init:Z

.field public static templateFetcherConfig:Lcom/cutsame/solution/config/TemplateFetcherConfig;

.field public static veEditorWorkSpace:Ljava/lang/String;

.field public static final workSpaceConfig$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/init/CutSameSolution;

    invoke-direct {v0}, Lcom/cutsame/solution/init/CutSameSolution;-><init>()V

    sput-object v0, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    .line 1
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cutsame/solution/init/CutSameSolution;->workSpaceConfig$delegate:Lkotlin/Lazy;

    .line 8
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution$cutSameGamePlay$2;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution$cutSameGamePlay$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cutsame/solution/init/CutSameSolution;->cutSameGamePlay$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const-string v1, "VESDK"

    const-string v2, "msg"

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    return-void

    .line 75
    :cond_11
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1f
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/ve.licbag"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1a

    return-object p0

    .line 84
    :cond_1a
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getTAG$CutSameIF_release()Ljava/lang/String;

    move-result-object p0

    const-string p1, "veLicensePath no exists"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public final a()V
    .registers 8

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getLicensePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getLicensePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initAuth fail, licensePath no exists "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/config/AuthorityConfig;->getAuthorityListener()Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    move-result-object v0

    if-nez v0, :cond_32

    goto/16 :goto_1a7

    .line 4
    :cond_32
    sget-object v1, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_PATH:Lcom/cutsame/solution/tob/LicenseManager$State;

    invoke-virtual {v1}, Lcom/cutsame/solution/tob/LicenseManager$State;->value()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object p0

    sget v2, Lcom/volcano/publish/R$string;->cutsame_file_not_found:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "application.getString(R.\u2026g.cutsame_file_not_found)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v1, p0}, Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;->onError(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_4b
    sget-object v0, Lcom/cutsame/solution/tob/LicenseManager;->INSTANCE:Lcom/cutsame/solution/tob/LicenseManager;

    .line 14
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getLicensePath()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/cutsame.licbag"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 17
    sget-object v3, Lcom/cutsame/solution/init/CutSameSolution;->TAG:Ljava/lang/String;

    const-string v4, "cutSameTargetPath: "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 21
    :cond_80
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/ve.licbag"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 23
    const-string v5, "VETargetPath is "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 26
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 27
    :cond_a9
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application.packageName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cutsame/solution/tob/LicenseManager;->initLicenseInfo$CutSameIF_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_ee

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "initAuth fail initLicenseInfo: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/config/AuthorityConfig;->getAuthorityListener()Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    move-result-object v0

    if-nez v0, :cond_d5

    goto/16 :goto_1a7

    .line 37
    :cond_d5
    sget-object v1, Lcom/cutsame/solution/tob/LicenseManager$State;->INIT_LICENSE_INFO_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    invoke-virtual {v1}, Lcom/cutsame/solution/tob/LicenseManager$State;->value()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object p0

    sget v2, Lcom/volcano/publish/R$string;->cutsame_authentication_file_format_error:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "application.getString(R.\u2026cation_file_format_error)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v1, p0}, Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;->onError(ILjava/lang/String;)V

    return-void

    .line 47
    :cond_ee
    invoke-virtual {v0}, Lcom/cutsame/solution/tob/LicenseManager;->checkInitAuthority$CutSameIF_release()Lcom/cutsame/solution/tob/LicenseManager$State;

    move-result-object v0

    .line 48
    sget-object v2, Lcom/cutsame/solution/tob/LicenseManager$State;->SUCCESS:Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v4, "application.getString(R.\u2026me_authentication_failed)"

    if-eq v0, v2, :cond_126

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "initAuth fail checkInitAuthority: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getAuthorityListener()Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    move-result-object v1

    if-nez v1, :cond_111

    goto/16 :goto_1a7

    .line 51
    :cond_111
    invoke-virtual {v0}, Lcom/cutsame/solution/tob/LicenseManager$State;->value()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object p0

    sget v2, Lcom/volcano/publish/R$string;->cutsame_authentication_failed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v1, v0, p0}, Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;->onError(ILjava/lang/String;)V

    return-void

    .line 60
    :cond_126
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cutsame/solution/init/CutSameSolution;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/VEAuth;->init(Ljava/lang/String;)I

    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "checkVEAuth "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setNeedAuth(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getAudioAppKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkAudioAuth audioAppKey: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getAudioToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkAudioAuth audioToken: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getAudioAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/config/AuthorityConfig;->getAudioToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VEAuth;->checkAudioAuth(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "checkAudioAuth: "

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1a7

    .line 71
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/AuthorityConfig;->getAuthorityListener()Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;

    move-result-object v1

    if-nez v1, :cond_193

    goto :goto_1a7

    .line 72
    :cond_193
    invoke-virtual {v0}, Lcom/cutsame/solution/tob/LicenseManager$State;->value()I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object p0

    sget v2, Lcom/volcano/publish/R$string;->cutsame_authentication_failed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {v1, v0, p0}, Lcom/cutsame/solution/config/AuthorityConfig$AuthorityListener;->onError(ILjava/lang/String;)V

    :cond_1a7
    :goto_1a7
    return-void
.end method

.method public final b()V
    .registers 3

    const/4 p0, 0x7

    .line 1
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->setLogLevel(B)V

    const/4 p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->setEffectLogLevel(I)V

    new-instance p0, Lcom/cutsame/solution/init/CutSameSolution$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/cutsame/solution/init/CutSameSolution$$ExternalSyntheticLambda0;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V

    .line 12
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_DEBUG:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nleeditor/NLE;->setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V

    .line 13
    new-instance v0, Lcom/cutsame/solution/init/CutSameSolution$registerLog$2;

    invoke-direct {v0}, Lcom/cutsame/solution/init/CutSameSolution$registerLog$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nleeditor/NLE;->setLogger(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;)V

    .line 25
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->setDelegate(Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;)V

    .line 26
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogLevel()Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V

    return-void
.end method

.method public final createCutSamePlayer(Landroid/view/SurfaceView;Lcom/cutsame/solution/source/CutSameSource;)Lcom/cutsame/solution/player/CutSamePlayer;
    .registers 6

    const-string v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->TAG:Ljava/lang/String;

    const-string v1, "createCutSamePlayer sourceInfo: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Lcom/cutsame/solution/source/CutSameSource;->getSourceInfo$CutSameIF_release()Lcom/cutsame/solution/source/SourceInfo;

    move-result-object v2

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cutSameSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lcom/cutsame/solution/init/CutSameSolution;->init:Z

    if-eqz v1, :cond_39

    .line 7
    new-instance v0, Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getVeEditorWorkSpace$CutSameIF_release()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/cutsame/solution/player/CutSamePlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/SurfaceView;Lcom/cutsame/solution/source/CutSameSource;)V

    return-object v0

    .line 8
    :cond_39
    const-string p0, "createCutSamePlayer fail, need call init()"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createCutSameSource(Lcom/cutsame/solution/source/SourceInfo;)Lcom/cutsame/solution/source/CutSameSource;
    .registers 4

    const-string v0, "sourceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->TAG:Ljava/lang/String;

    const-string v1, "createCutSameSource sourceInfo: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lcom/cutsame/solution/init/CutSameSolution;->init:Z

    if-eqz v1, :cond_22

    .line 6
    new-instance v0, Lcom/cutsame/solution/source/CutSameSource;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getEffectFetcherConfig$CutSameIF_release()Lcom/cutsame/solution/config/EffectFetcherConfig;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/cutsame/solution/source/CutSameSource;-><init>(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;Lcom/cutsame/solution/source/SourceInfo;)V

    return-object v0

    .line 7
    :cond_22
    const-string p0, "createCutSameSource fail ,need call init()"

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "createCutSameSource fail, need call init()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createMediaPlayer(Landroid/view/SurfaceView;)Lcom/cutsame/solution/player/MediaPlayer;
    .registers 3

    const-string v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/cutsame/solution/player/MediaPlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/cutsame/solution/player/MediaPlayer;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;)V

    return-object v0
.end method

.method public final getApplication$CutSameIF_release()Landroid/app/Application;
    .registers 1

    .line 1
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution;->application:Landroid/app/Application;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "application"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAuthorityConfig$CutSameIF_release()Lcom/cutsame/solution/config/AuthorityConfig;
    .registers 1

    .line 1
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution;->authorityConfig:Lcom/cutsame/solution/config/AuthorityConfig;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "authorityConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEffectFetcherConfig$CutSameIF_release()Lcom/cutsame/solution/config/EffectFetcherConfig;
    .registers 1

    .line 1
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution;->effectFetcherConfig:Lcom/cutsame/solution/config/EffectFetcherConfig;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "effectFetcherConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTAG$CutSameIF_release()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final getVeEditorWorkSpace$CutSameIF_release()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution;->veEditorWorkSpace:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "veEditorWorkSpace"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWorkSpaceConfig$CutSameIF_release()Lcom/cutsame/solution/config/WorkSpaceConfig;
    .registers 1

    .line 1
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution;->workSpaceConfig$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cutsame/solution/config/WorkSpaceConfig;

    return-object p0
.end method

.method public final init(Landroid/app/Application;Lcom/cutsame/solution/config/AuthorityConfig;Lcom/cutsame/solution/config/TemplateFetcherConfig;Lcom/cutsame/solution/config/EffectFetcherConfig;Z)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorityConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CutSameSolution init authorityConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", effectFetcherConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", templateFetcherConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p1, Lcom/cutsame/solution/init/CutSameSolution;->application:Landroid/app/Application;

    .line 3
    sput-object p2, Lcom/cutsame/solution/init/CutSameSolution;->authorityConfig:Lcom/cutsame/solution/config/AuthorityConfig;

    .line 4
    sput-object p3, Lcom/cutsame/solution/init/CutSameSolution;->templateFetcherConfig:Lcom/cutsame/solution/config/TemplateFetcherConfig;

    .line 5
    sput-object p4, Lcom/cutsame/solution/init/CutSameSolution;->effectFetcherConfig:Lcom/cutsame/solution/config/EffectFetcherConfig;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getWorkSpaceConfig$CutSameIF_release()Lcom/cutsame/solution/config/WorkSpaceConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cutsame/solution/config/WorkSpaceConfig;->getWorkSpaceDir()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->VEEDITOR:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    sput-object p1, Lcom/cutsame/solution/init/CutSameSolution;->veEditorWorkSpace:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object p1

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->VESDK:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VESDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/bef/effectsdk/FileResourceFinder;

    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->getEffectFetcherConfig$CutSameIF_release()Lcom/cutsame/solution/config/EffectFetcherConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cutsame/solution/config/EffectFetcherConfig;->getLocalModelPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bef/effectsdk/FileResourceFinder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ss/android/vesdk/VESDK;->setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V

    const/4 p1, 0x1

    .line 16
    invoke-static {p1}, Lcom/ss/android/vesdk/VESDK;->setEnableStickerAmazing(Z)V

    const/16 p2, 0x2bc

    .line 18
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VESDK;->enableHDH264HWDecoder(ZI)V

    .line 19
    invoke-static {p1}, Lcom/ss/android/vesdk/VESDK;->enableTTByteVC1Decoder(Z)V

    const/16 p2, 0xa

    .line 21
    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->setMaxImageBufferCount(I)I

    const p2, 0xc748a0

    .line 23
    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->setOptConfig(I)I

    .line 26
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->setEnableEffectTransition(Z)I

    const/16 p2, 0x8

    const/4 p3, -0x1

    if-eqz p5, :cond_b5

    .line 29
    invoke-static {p2, p3, p3, p3}, Lcom/ss/android/vesdk/VEEditor;->setMaxVideoReaderLimits(IIII)I

    goto :goto_b9

    :cond_b5
    const/4 p4, 0x0

    .line 31
    invoke-static {p2, p3, p3, p4}, Lcom/ss/android/vesdk/VEEditor;->setMaxVideoReaderLimits(IIII)I

    .line 35
    :goto_b9
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->setEnableEffectCanvas(Z)I

    .line 38
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->enableHighSpeed(Z)I

    .line 39
    sget-object p2, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->init()V

    .line 40
    const-string p2, "CutSameIF set hasLoadedLibrary to true"

    invoke-static {v0, p2}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object p2, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;

    invoke-virtual {p2, p1}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->setHasLoadedLibrary(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->b()V

    .line 43
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution;->a()V

    .line 44
    sput-boolean p1, Lcom/cutsame/solution/init/CutSameSolution;->init:Z

    return-void
.end method

.method public final release()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->deInit()V

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->setLogLevel(B)V

    .line 3
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->setEffectLogLevel(I)V

    .line 4
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_OFF:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V

    .line 5
    sget-object v0, Lcom/cutsame/solution/tob/LicenseManager;->INSTANCE:Lcom/cutsame/solution/tob/LicenseManager;

    invoke-virtual {v0}, Lcom/cutsame/solution/tob/LicenseManager;->release$CutSameIF_release()V

    .line 6
    sput-boolean p0, Lcom/cutsame/solution/init/CutSameSolution;->init:Z

    return-void
.end method

.method public final releaseLogIf()V
    .registers 3

    .line 1
    sget-object p0, Lcom/ss/android/ugc/cut_log/LogUtil;->INSTANCE:Lcom/ss/android/ugc/cut_log/LogUtil;

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->getLogIF()Lcom/ss/android/ugc/cut_log/LogIF;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 2
    instance-of v0, p0, Lcom/ss/android/ugc/cut_log/LogWrapper;

    if-eqz v0, :cond_18

    .line 3
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->TAG:Ljava/lang/String;

    const-string v1, "releaseLogIF"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    check-cast p0, Lcom/ss/android/ugc/cut_log/LogWrapper;

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_log/LogWrapper;->release()V

    :cond_18
    return-void
.end method

.method public final setLogIf(Lcom/ss/android/ugc/cut_log/LogIF;)V
    .registers 2

    const-string p0, "log"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/ss/android/ugc/cut_log/LogUtil;->INSTANCE:Lcom/ss/android/ugc/cut_log/LogUtil;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->setLogIF(Lcom/ss/android/ugc/cut_log/LogIF;)V

    return-void
.end method
