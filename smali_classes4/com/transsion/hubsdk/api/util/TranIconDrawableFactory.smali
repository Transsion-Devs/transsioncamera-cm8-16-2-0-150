.class public Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranIconDrawableFactory"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

.field private mThubService:Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 164
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 190
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 188
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 176
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .registers 7

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 275
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 273
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 41
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 4

    if-eqz p1, :cond_d

    .line 68
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 66
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 54
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .registers 6

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 152
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 150
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 218
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 216
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 232
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 230
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 245
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 243
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 259
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 257
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable or themeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-eqz p1, :cond_d

    .line 95
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 93
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 109
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 107
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-eqz p1, :cond_d

    .line 122
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 120
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 136
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 134
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable or themeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;
    .registers 3

    .line 21
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 22
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->TAG:Ljava/lang/String;

    const-string v0, "TranThubIconDrawableFactory"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;

    :cond_18
    return-object p1

    .line 25
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->TAG:Ljava/lang/String;

    const-string v0, "TranAospIconDrawableFactory"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

    :cond_2b
    return-object p1
.end method

.method public getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    if-eqz p1, :cond_11

    if-eqz p3, :cond_11

    if-eqz p4, :cond_11

    .line 205
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 203
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-eqz p2, :cond_f

    if-eqz p3, :cond_f

    .line 82
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 80
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
