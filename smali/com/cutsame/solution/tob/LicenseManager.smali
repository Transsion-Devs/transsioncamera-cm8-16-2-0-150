.class public final Lcom/cutsame/solution/tob/LicenseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/tob/LicenseManager$State;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/tob/LicenseManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/tob/LicenseManager;

    invoke-direct {v0}, Lcom/cutsame/solution/tob/LicenseManager;-><init>()V

    sput-object v0, Lcom/cutsame/solution/tob/LicenseManager;->INSTANCE:Lcom/cutsame/solution/tob/LicenseManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native checkLicense(Ljava/lang/String;)I
.end method

.method private final native getBuffer()[B
.end method

.method private final native handleUnionLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native initCutSameLicenseInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native releaseLicense()V
.end method


# virtual methods
.method public final checkInitAuthority$CutSameIF_release()Lcom/cutsame/solution/tob/LicenseManager$State;
    .registers 2

    const-string v0, "CUTSAME_INIT"

    .line 1
    invoke-direct {p0, v0}, Lcom/cutsame/solution/tob/LicenseManager;->checkLicense(Ljava/lang/String;)I

    move-result p0

    .line 2
    sget-object v0, Lcom/cutsame/solution/tob/LicenseManager$State;->Companion:Lcom/cutsame/solution/tob/LicenseManager$State$Companion;

    invoke-virtual {v0, p0}, Lcom/cutsame/solution/tob/LicenseManager$State$Companion;->valueOf(I)Lcom/cutsame/solution/tob/LicenseManager$State;

    move-result-object p0

    return-object p0
.end method

.method public final getBufferinfo$CutSameIF_release()[B
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cutsame/solution/tob/LicenseManager;->getBuffer()[B

    move-result-object p0

    return-object p0
.end method

.method public final initLicenseInfo$CutSameIF_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "veTargetPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cutsame/solution/tob/LicenseManager;->handleUnionLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "initLicenseInfo_handleUnionLicense status: "

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "LicenseManager"

    invoke-static {v0, p3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2c

    .line 4
    invoke-direct {p0, p2, p4}, Lcom/cutsame/solution/tob/LicenseManager;->initCutSameLicenseInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return p1
.end method

.method public final release$CutSameIF_release()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/cutsame/solution/tob/LicenseManager;->releaseLicense()V

    return-void
.end method
