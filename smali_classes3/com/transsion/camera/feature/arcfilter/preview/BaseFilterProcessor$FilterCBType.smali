.class public final enum Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "FilterCBType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

.field public static final enum TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

.field public static final enum TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;
    .registers 2

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 53
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    const-string v1, "TYPE_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    new-instance v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    const-string v1, "TYPE_SURFACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    .line 52
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->$values()[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->$VALUES:[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;
    .registers 2

    .line 52
    const-class v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;
    .registers 1

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->$VALUES:[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    return-object v0
.end method
