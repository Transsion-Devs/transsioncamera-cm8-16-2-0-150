.class public final Lcom/ss/ugc/effectplatform/util/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/StringUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/ss/ugc/effectplatform/util/StringUtil;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/StringUtil;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/StringUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/StringUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final substringSafetyCheck(Ljava/lang/String;II)Z
    .registers 5

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    if-ltz p2, :cond_24

    if-ltz p3, :cond_24

    if-lt p2, p3, :cond_16

    goto :goto_24

    .line 17
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p2, p0, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p3, p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    return v0
.end method
