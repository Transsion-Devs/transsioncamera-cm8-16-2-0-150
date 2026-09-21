.class public final Lcom/ss/ugc/effectplatform/util/TextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/TextUtils;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 17
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_e
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_b

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method
