.class public final enum Lcom/bytedance/ugc/nlerecorder/VideoSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ugc/nlerecorder/VideoSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

.field public static final enum CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

.field public static final enum MEDIA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;


# direct methods
.method private static final synthetic $values()[Lcom/bytedance/ugc/nlerecorder/VideoSourceType;
    .registers 2

    sget-object v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    sget-object v1, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->MEDIA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    filled-new-array {v0, v1}, [Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    const-string v1, "CAMERA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    .line 7
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    const-string v1, "MEDIA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->MEDIA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    invoke-static {}, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->$values()[Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->$VALUES:[Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ugc/nlerecorder/VideoSourceType;
    .registers 2

    const-class v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ugc/nlerecorder/VideoSourceType;
    .registers 1

    sget-object v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->$VALUES:[Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    return-object v0
.end method
