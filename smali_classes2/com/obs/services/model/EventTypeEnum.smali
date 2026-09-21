.class public final enum Lcom/obs/services/model/EventTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/obs/services/model/EventTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_CREATED_ALL:Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD:Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_CREATED_COPY:Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_CREATED_POST:Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_CREATED_PUT:Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_REMOVED_ALL:Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_REMOVED_DELETE:Lcom/obs/services/model/EventTypeEnum;

.field public static final enum OBJECT_REMOVED_DELETE_MARKER_CREATED:Lcom/obs/services/model/EventTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 28
    new-instance v0, Lcom/obs/services/model/EventTypeEnum;

    const-string v1, "OBJECT_CREATED_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_ALL:Lcom/obs/services/model/EventTypeEnum;

    .line 33
    new-instance v1, Lcom/obs/services/model/EventTypeEnum;

    const-string v2, "OBJECT_CREATED_PUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_PUT:Lcom/obs/services/model/EventTypeEnum;

    .line 38
    new-instance v2, Lcom/obs/services/model/EventTypeEnum;

    const-string v3, "OBJECT_CREATED_POST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_POST:Lcom/obs/services/model/EventTypeEnum;

    .line 43
    new-instance v3, Lcom/obs/services/model/EventTypeEnum;

    const-string v4, "OBJECT_CREATED_COPY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_COPY:Lcom/obs/services/model/EventTypeEnum;

    .line 48
    new-instance v4, Lcom/obs/services/model/EventTypeEnum;

    const-string v5, "OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD:Lcom/obs/services/model/EventTypeEnum;

    .line 53
    new-instance v5, Lcom/obs/services/model/EventTypeEnum;

    const-string v6, "OBJECT_REMOVED_ALL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_ALL:Lcom/obs/services/model/EventTypeEnum;

    .line 58
    new-instance v6, Lcom/obs/services/model/EventTypeEnum;

    const-string v7, "OBJECT_REMOVED_DELETE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_DELETE:Lcom/obs/services/model/EventTypeEnum;

    .line 64
    new-instance v7, Lcom/obs/services/model/EventTypeEnum;

    const-string v8, "OBJECT_REMOVED_DELETE_MARKER_CREATED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/obs/services/model/EventTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_DELETE_MARKER_CREATED:Lcom/obs/services/model/EventTypeEnum;

    .line 23
    filled-new-array/range {v0 .. v7}, [Lcom/obs/services/model/EventTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/obs/services/model/EventTypeEnum;->$VALUES:[Lcom/obs/services/model/EventTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/EventTypeEnum;
    .registers 2

    .line 67
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 68
    const-string v0, "ObjectCreated:*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 69
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_ALL:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    .line 70
    :cond_11
    const-string v0, "ObjectCreated:Put"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1c

    .line 71
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_PUT:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    .line 72
    :cond_1c
    const-string v0, "ObjectCreated:Post"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 73
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_POST:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    .line 74
    :cond_27
    const-string v0, "ObjectCreated:Copy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_32

    .line 75
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_COPY:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    .line 76
    :cond_32
    const-string v0, "ObjectCreated:CompleteMultipartUpload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3d

    .line 77
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    .line 78
    :cond_3d
    const-string v0, "ObjectRemoved:*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_48

    .line 79
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_ALL:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    .line 80
    :cond_48
    const-string v0, "ObjectRemoved:Delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_53

    .line 81
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_DELETE:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    .line 82
    :cond_53
    const-string v0, "ObjectRemoved:DeleteMarkerCreated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_5e

    .line 83
    sget-object p0, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_DELETE_MARKER_CREATED:Lcom/obs/services/model/EventTypeEnum;

    return-object p0

    :cond_5e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/obs/services/model/EventTypeEnum;
    .registers 2

    .line 23
    const-class v0, Lcom/obs/services/model/EventTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/EventTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/obs/services/model/EventTypeEnum;
    .registers 1

    .line 23
    sget-object v0, Lcom/obs/services/model/EventTypeEnum;->$VALUES:[Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v0}, [Lcom/obs/services/model/EventTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/obs/services/model/EventTypeEnum;

    return-object v0
.end method
