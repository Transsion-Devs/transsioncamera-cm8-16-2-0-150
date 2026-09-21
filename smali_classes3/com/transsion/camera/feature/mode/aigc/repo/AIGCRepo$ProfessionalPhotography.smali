.class Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;
.super Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfessionalPhotography"
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
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sAfricaItems:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsPublicItems()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sPublicItems:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSouthAsiaItems()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sSouthAsiaItems:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSoutheastAsiaItems()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sSoutheastAsiaItems:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 127
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_africa_actress:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_africa_actress:I

    const-string v3, "africa_actress_1"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v2, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_africa_malefootball:I

    sget v3, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_africa_malefootball:I

    const-string v4, "africa_malefootball_1"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_africa_malefirefighter:I

    sget v4, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_africa_malefirefighter:I

    const-string v5, "africa_malefirefighter_1"

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sAfricaItems:Ljava/util/List;

    .line 139
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_southasia_flightattendant:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_southasia_flightattendant:I

    const-string v3, "southasia_flightattendant_1"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v2, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_southasia_femalenurse:I

    sget v3, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_southasia_femalenurse:I

    const-string v4, "southasia_femalenurse_1"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_southasia_malepilot:I

    sget v4, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_southasia_malepilot:I

    const-string v5, "southasia_malepilot_1"

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sSouthAsiaItems:Ljava/util/List;

    .line 151
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_southeastasia_femalesinger:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_southeastasia_femalesinger:I

    const-string v3, "southeastasia_femalesinger_1"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v2, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_southeastasia_femaleteacher:I

    sget v3, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_southeastasia_femaleteacher:I

    const-string v4, "southeastasia_femaleteacher_1"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_southeastasia_maledoctor:I

    sget v4, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_southeastasia_maledoctor:I

    const-string v5, "southeastasia_maledoctor_1"

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sSoutheastAsiaItems:Ljava/util/List;

    .line 163
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_public_femalepainter:I

    sget v2, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_public_femalepainter:I

    const-string v3, "public_femalepainter_1"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v2, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_public_maleastronaut:I

    sget v3, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_public_maleastronaut:I

    const-string v4, "public_maleastronaut_1"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aigc/R$string;->aigc_professional_photography_public_policeman:I

    sget v4, Lcom/transsion/camera/feature/aigc/R$drawable;->aigc_professional_photography_public_policeman:I

    const-string v5, "public_policeman_1"

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;-><init>(IILjava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sPublicItems:Ljava/util/List;

    .line 175
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sRegionItemMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 186
    const-string v0, "aigc_indicator_professional_photography"

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_effect_professional_photography:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;-><init>(Ljava/lang/String;I)V

    return-void
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

    .line 191
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sRegionItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$ProfessionalPhotography;->sPublicItems:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
