.class public final enum Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

.field public static final enum CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

.field public static final enum CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

.field public static final enum CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;


# direct methods
.method private static final synthetic $values()[Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;
    .registers 3

    sget-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    sget-object v1, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    sget-object v2, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    filled-new-array {v0, v1, v2}, [Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 9
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    const-string v1, "CHANGE_TYPE_DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_DELETE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    .line 10
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    const-string v1, "CHANGE_TYPE_UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_UPDATE:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    .line 11
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    const-string v1, "CHANGE_TYPE_ADD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->CHANGE_TYPE_ADD:Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-static {}, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->$values()[Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->$VALUES:[Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;
    .registers 2

    const-class v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;
    .registers 1

    sget-object v0, Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;->$VALUES:[Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeType;

    return-object v0
.end method
