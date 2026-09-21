.class public final enum Lcom/obs/services/model/HttpMethodEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/HttpMethodEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/HttpMethodEnum;

.field public static final enum DELETE:Lcom/obs/services/model/HttpMethodEnum;

.field public static final enum GET:Lcom/obs/services/model/HttpMethodEnum;

.field public static final enum HEAD:Lcom/obs/services/model/HttpMethodEnum;

.field public static final enum OPTIONS:Lcom/obs/services/model/HttpMethodEnum;

.field public static final enum POST:Lcom/obs/services/model/HttpMethodEnum;

.field public static final enum PUT:Lcom/obs/services/model/HttpMethodEnum;


# instance fields
.field private operationType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 26
    new-instance v0, Lcom/obs/services/model/HttpMethodEnum;

    const/4 v1, 0x0

    const-string v2, "Get"

    const-string v3, "GET"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/HttpMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    .line 31
    new-instance v1, Lcom/obs/services/model/HttpMethodEnum;

    const/4 v2, 0x1

    const-string v3, "Put"

    const-string v4, "PUT"

    invoke-direct {v1, v4, v2, v3}, Lcom/obs/services/model/HttpMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    .line 36
    new-instance v2, Lcom/obs/services/model/HttpMethodEnum;

    const/4 v3, 0x2

    const-string v4, "Post"

    const-string v5, "POST"

    invoke-direct {v2, v5, v3, v4}, Lcom/obs/services/model/HttpMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/obs/services/model/HttpMethodEnum;->POST:Lcom/obs/services/model/HttpMethodEnum;

    .line 41
    new-instance v3, Lcom/obs/services/model/HttpMethodEnum;

    const/4 v4, 0x3

    const-string v5, "Delete"

    const-string v6, "DELETE"

    invoke-direct {v3, v6, v4, v5}, Lcom/obs/services/model/HttpMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/obs/services/model/HttpMethodEnum;->DELETE:Lcom/obs/services/model/HttpMethodEnum;

    .line 46
    new-instance v4, Lcom/obs/services/model/HttpMethodEnum;

    const/4 v5, 0x4

    const-string v6, "Head"

    const-string v7, "HEAD"

    invoke-direct {v4, v7, v5, v6}, Lcom/obs/services/model/HttpMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/obs/services/model/HttpMethodEnum;->HEAD:Lcom/obs/services/model/HttpMethodEnum;

    .line 51
    new-instance v5, Lcom/obs/services/model/HttpMethodEnum;

    const/4 v6, 0x5

    const-string v7, "Options"

    const-string v8, "OPTIONS"

    invoke-direct {v5, v8, v6, v7}, Lcom/obs/services/model/HttpMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/obs/services/model/HttpMethodEnum;->OPTIONS:Lcom/obs/services/model/HttpMethodEnum;

    .line 22
    filled-new-array/range {v0 .. v5}, [Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/HttpMethodEnum;->$VALUES:[Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_8

    .line 59
    iput-object p3, p0, Lcom/obs/services/model/HttpMethodEnum;->operationType:Ljava/lang/String;

    return-void

    .line 57
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "operation type code is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getValueFromStringCode(Ljava/lang/String;)Lcom/obs/services/model/HttpMethodEnum;
    .registers 7

    if-eqz p0, :cond_28

    .line 71
    invoke-static {}, Lcom/obs/services/model/HttpMethodEnum;->values()[Lcom/obs/services/model/HttpMethodEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 72
    invoke-virtual {v3}, Lcom/obs/services/model/HttpMethodEnum;->getOperationType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return-object v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 77
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation type is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "operation type is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/HttpMethodEnum;
    .registers 2

    .line 22
    const-class v0, Lcom/obs/services/model/HttpMethodEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HttpMethodEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/HttpMethodEnum;
    .registers 1

    .line 22
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->$VALUES:[Lcom/obs/services/model/HttpMethodEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/HttpMethodEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/HttpMethodEnum;

    return-object v0
.end method


# virtual methods
.method public getOperationType()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/obs/services/model/HttpMethodEnum;->operationType:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
