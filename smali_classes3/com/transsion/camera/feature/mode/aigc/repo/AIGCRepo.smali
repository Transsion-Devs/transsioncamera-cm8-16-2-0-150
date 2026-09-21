.class public final Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalIDPhoto;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Hair;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Wedding;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Graduation;,
        Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Childhood;
    }
.end annotation


# static fields
.field public static final AIGC_INDICATOR_CHILDHOOD:Ljava/lang/String; = "aigc_indicator_childhood"

.field public static final AIGC_INDICATOR_GRADUATION:Ljava/lang/String; = "aigc_indicator_graduation"

.field public static final AIGC_INDICATOR_HAIR:Ljava/lang/String; = "aigc_indicator_hair"

.field public static final AIGC_INDICATOR_PERSONAL_PHOTO:Ljava/lang/String; = "aigc_indicator_personal_photo"

.field public static final AIGC_INDICATOR_PROFESSIONAL_ID_PHOTO:Ljava/lang/String; = "aigc_indicator_professional_id_photo"

.field public static final AIGC_INDICATOR_PROFESSIONAL_PHOTOGRAPHY:Ljava/lang/String; = "aigc_indicator_professional_photography"

.field public static final AIGC_INDICATOR_WEDDING:Ljava/lang/String; = "aigc_indicator_wedding"

.field private static final sFirstTemplateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIndicatorInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTemplateInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTemplateItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTemplateItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$J1CHdwAUS4GI66NBuk29TeFSEog(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)V
    .registers 5

    .line 659
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sIndicatorInfos:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->-$$Nest$fgetmTitle(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->indicator()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->buildItemList()Ljava/util/List;

    move-result-object v0

    .line 663
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sFirstTemplateMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->-$$Nest$fgetmIndicator(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateItemInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RC0452trWXnClpa-4OyckubtoFA(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;)V
    .registers 6

    .line 668
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->getTemplate()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->-$$Nest$fgetmIndicator(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->-$$Nest$fgetmTitle(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)I

    move-result p0

    .line 671
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->getTitle()I

    move-result p1

    invoke-direct {v2, v3, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;-><init>(Ljava/lang/String;II)V

    .line 670
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 621
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;-><init>()V

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalIDPhoto;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalIDPhoto;-><init>()V

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Hair;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Hair;-><init>()V

    new-instance v3, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;

    invoke-direct {v3}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$PersonalPhoto;-><init>()V

    new-instance v4, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Wedding;

    invoke-direct {v4}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Wedding;-><init>()V

    new-instance v5, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Graduation;

    invoke-direct {v5}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Graduation;-><init>()V

    new-instance v6, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Childhood;

    invoke-direct {v6}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$Childhood;-><init>()V

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sIndicators:Ljava/util/List;

    .line 647
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sIndicatorInfos:Ljava/util/List;

    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateItemInfos:Ljava/util/List;

    .line 651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateItems:Ljava/util/List;

    .line 653
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sFirstTemplateMap:Ljava/util/Map;

    .line 655
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateInfoMap:Ljava/util/Map;

    .line 658
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstItem(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;
    .registers 2

    .line 697
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sFirstTemplateMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    return-object p0
.end method

.method public static getIndicator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 689
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;

    if-nez p0, :cond_d

    .line 691
    const-string p0, ""

    return-object p0

    .line 693
    :cond_d
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->-$$Nest$fgetmIndicator(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIndicators()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;",
            ">;"
        }
    .end annotation

    .line 677
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sIndicatorInfos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 681
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateItemInfos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 705
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateInfoMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;

    if-nez p0, :cond_13

    .line 707
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v0, Lcom/transsion/camera/feature/aigc/R$string;->aigc_mode_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 709
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->-$$Nest$fgetmIndicatorTitle(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->-$$Nest$fgetmTemplateTitle(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTemplates()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 685
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->sTemplateItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getWatermarkDescription()Ljava/lang/String;
    .registers 2

    .line 701
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_watermark_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
