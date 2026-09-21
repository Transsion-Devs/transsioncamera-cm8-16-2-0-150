.class public final enum Lcom/bytedance/bpea/basics/EntryCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/bpea/basics/EntryCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/bpea/basics/EntryCategory;

.field public static final enum BPEA_ENTRY:Lcom/bytedance/bpea/basics/EntryCategory;

.field public static final enum DIRECT_AUTH:Lcom/bytedance/bpea/basics/EntryCategory;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/bytedance/bpea/basics/EntryCategory;

    .line 13
    const-string v1, "BPEA_ENTRY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/bpea/basics/EntryCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/bpea/basics/EntryCategory;->BPEA_ENTRY:Lcom/bytedance/bpea/basics/EntryCategory;

    new-instance v1, Lcom/bytedance/bpea/basics/EntryCategory;

    const-string v2, "DIRECT_AUTH"

    const/4 v4, 0x2

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/bpea/basics/EntryCategory;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/bpea/basics/EntryCategory;->DIRECT_AUTH:Lcom/bytedance/bpea/basics/EntryCategory;

    filled-new-array {v0, v1}, [Lcom/bytedance/bpea/basics/EntryCategory;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bpea/basics/EntryCategory;->$VALUES:[Lcom/bytedance/bpea/basics/EntryCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/bpea/basics/EntryCategory;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/bpea/basics/EntryCategory;
    .registers 2

    const-class v0, Lcom/bytedance/bpea/basics/EntryCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/bpea/basics/EntryCategory;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/bpea/basics/EntryCategory;
    .registers 1

    sget-object v0, Lcom/bytedance/bpea/basics/EntryCategory;->$VALUES:[Lcom/bytedance/bpea/basics/EntryCategory;

    invoke-virtual {v0}, [Lcom/bytedance/bpea/basics/EntryCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/bpea/basics/EntryCategory;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .registers 1

    .line 11
    iget p0, p0, Lcom/bytedance/bpea/basics/EntryCategory;->type:I

    return p0
.end method
