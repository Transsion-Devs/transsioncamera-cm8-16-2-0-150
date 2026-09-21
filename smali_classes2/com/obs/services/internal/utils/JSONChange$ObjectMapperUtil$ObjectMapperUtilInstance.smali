.class Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil$ObjectMapperUtilInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectMapperUtilInstance"
.end annotation


# static fields
.field private static final MAPPER:Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;

    invoke-direct {v0}, Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;-><init>()V

    sput-object v0, Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil$ObjectMapperUtilInstance;->MAPPER:Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;
    .registers 1

    .line 82
    sget-object v0, Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil$ObjectMapperUtilInstance;->MAPPER:Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;

    return-object v0
.end method
