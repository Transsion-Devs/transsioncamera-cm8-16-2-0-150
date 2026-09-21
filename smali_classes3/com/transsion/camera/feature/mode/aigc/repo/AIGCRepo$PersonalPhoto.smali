.class Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;
.super Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersonalPhoto"
.end annotation


# static fields
.field private static final sAfricaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPublicItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegionItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSouthAsiaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoutheastAsiaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsAfricaItems()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sAfricaItems:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsPublicItems()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sPublicItems:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSouthAsiaItems()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sSouthAsiaItems:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSoutheastAsiaItems()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sSoutheastAsiaItems:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sAfricaItems:Ljava/util/List;

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sSouthAsiaItems:Ljava/util/List;

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sSoutheastAsiaItems:Ljava/util/List;

    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sPublicItems:Ljava/util/List;

    .line 322
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->afconConfig()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2b

    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->afconCountry()Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v5

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 324
    :goto_2c
    sget v6, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->CURRENT_REGION:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4f

    if-eqz v4, :cond_4f

    .line 325
    new-instance v7, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v8, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_1:I

    sget v9, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_africa_africancup_1:I

    const-string v10, "africa_africancup_1"

    invoke-direct {v7, v8, v9, v10}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v7, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v8, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_2:I

    sget v9, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_africa_africancup_2:I

    const-string v10, "africa_africancup_2"

    invoke-direct {v7, v8, v9, v10}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_4f
    new-instance v7, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v8, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africa_photo_1:I

    sget v9, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_africa_photo_1:I

    const-string v10, "africa_photo_1"

    invoke-direct {v7, v8, v9, v10}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v7, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v8, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africa_photo_2:I

    sget v9, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_africa_photo_2:I

    const-string v10, "africa_photo_2"

    invoke-direct {v7, v8, v9, v10}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v7, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v8, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africa_photo_3:I

    sget v9, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_africa_photo_3:I

    const-string v10, "africa_photo_3"

    invoke-direct {v7, v8, v9, v10}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    if-ne v6, v0, :cond_9a

    if-eqz v4, :cond_9a

    .line 344
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v7, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_1:I

    sget v8, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southasia_africancup_1:I

    const-string v9, "southasia_africancup_1"

    invoke-direct {v0, v7, v8, v9}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v7, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_2:I

    sget v8, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southasia_africancup_2:I

    const-string v9, "southasia_africancup_2"

    invoke-direct {v0, v7, v8, v9}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_9a
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v7, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_southasia_photo_1:I

    sget v8, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southasia_photo_1:I

    const-string v9, "southasia_photo_1"

    invoke-direct {v0, v7, v8, v9}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v7, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_southasia_photo_2:I

    sget v8, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southasia_photo_2:I

    const-string v9, "southasia_photo_2"

    invoke-direct {v0, v7, v8, v9}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v7, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_southasia_photo_3:I

    sget v8, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southasia_photo_3:I

    const-string v9, "southasia_photo_3"

    invoke-direct {v0, v7, v8, v9}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    if-ne v6, v0, :cond_e5

    if-eqz v4, :cond_e5

    .line 362
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_1:I

    sget v7, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southeastasia_africancup_1:I

    const-string v8, "southeastasia_africancup_1"

    invoke-direct {v0, v1, v7, v8}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_2:I

    sget v7, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southeastasia_africancup_2:I

    const-string v8, "southeastasia_africancup_2"

    invoke-direct {v0, v1, v7, v8}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_e5
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_southeastasia_photo_1:I

    sget v7, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southeastasia_photo_1:I

    const-string v8, "southeastasia_photo_1"

    invoke-direct {v0, v1, v7, v8}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_southeastasia_photo_2:I

    sget v7, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southeastasia_photo_2:I

    const-string v8, "southeastasia_photo_2"

    invoke-direct {v0, v1, v7, v8}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_southeastasia_photo_3:I

    sget v7, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_southeastasia_photo_3:I

    const-string v8, "southeastasia_photo_3"

    invoke-direct {v0, v1, v7, v8}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    if-eq v6, v0, :cond_114

    if-ne v6, v5, :cond_132

    :cond_114
    if-eqz v4, :cond_132

    .line 380
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_1:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_public_africancup_1:I

    const-string v4, "public_africancup_1"

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_africancup_2:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_public_africancup_2:I

    const-string v4, "public_africancup_2"

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_132
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_public_photo_1:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_public_photo_1:I

    const-string v4, "public_photo_1"

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_public_photo_2:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_public_photo_2:I

    const-string v4, "public_photo_2"

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_personal_photo_public_photo_3:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_personal_photo_public_photo_3:I

    const-string v4, "public_photo_3"

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sRegionItemMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 409
    const-string v0, "aigc_indicator_personal_photo"

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_effect_personal_photo:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static afconConfig()Z
    .registers 2

    .line 427
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$bool;->aigc_mode_support_clothing_afcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static afconCountry()Z
    .registers 3

    .line 418
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mOobeCountryCode:Ljava/lang/String;

    .line 419
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkCustomizeRegionsMap:Ljava/util/Map;

    if-eqz v1, :cond_26

    .line 420
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_26

    .line 423
    :cond_1b
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getRegionList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 414
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sRegionItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;->sPublicItems:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
