.class public final enum Lcom/obs/services/model/http/HttpStatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/http/HttpStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/http/HttpStatusCode;

.field public static final enum HTTP_OK:Lcom/obs/services/model/http/HttpStatusCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Lcom/obs/services/model/http/HttpStatusCode;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "HTTP_OK"

    invoke-direct {v0, v3, v1, v2}, Lcom/obs/services/model/http/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/obs/services/model/http/HttpStatusCode;->HTTP_OK:Lcom/obs/services/model/http/HttpStatusCode;

    .line 17
    filled-new-array {v0}, [Lcom/obs/services/model/http/HttpStatusCode;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/http/HttpStatusCode;->$VALUES:[Lcom/obs/services/model/http/HttpStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/obs/services/model/http/HttpStatusCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/http/HttpStatusCode;
    .registers 2

    .line 17
    const-class v0, Lcom/obs/services/model/http/HttpStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/http/HttpStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/http/HttpStatusCode;
    .registers 1

    .line 17
    sget-object v0, Lcom/obs/services/model/http/HttpStatusCode;->$VALUES:[Lcom/obs/services/model/http/HttpStatusCode;

    invoke-virtual {v0}, [Lcom/obs/services/model/http/HttpStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/http/HttpStatusCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/obs/services/model/http/HttpStatusCode;->code:I

    return p0
.end method
