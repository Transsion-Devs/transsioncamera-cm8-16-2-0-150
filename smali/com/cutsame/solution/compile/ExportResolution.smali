.class public final enum Lcom/cutsame/solution/compile/ExportResolution;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/cutsame/solution/compile/ExportResolution;

.field public static final enum V_1080P:Lcom/cutsame/solution/compile/ExportResolution;

.field public static final enum V_2K:Lcom/cutsame/solution/compile/ExportResolution;

.field public static final enum V_480P:Lcom/cutsame/solution/compile/ExportResolution;

.field public static final enum V_4K:Lcom/cutsame/solution/compile/ExportResolution;

.field public static final enum V_720P:Lcom/cutsame/solution/compile/ExportResolution;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/cutsame/solution/compile/ExportResolution;

    const/16 v5, 0x870

    const/16 v6, 0xfa0

    const-string v1, "V_4K"

    const/4 v2, 0x0

    const-string v3, "4K"

    const/16 v4, 0xf00

    invoke-direct/range {v0 .. v6}, Lcom/cutsame/solution/compile/ExportResolution;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/cutsame/solution/compile/ExportResolution;->V_4K:Lcom/cutsame/solution/compile/ExportResolution;

    .line 2
    new-instance v1, Lcom/cutsame/solution/compile/ExportResolution;

    const/16 v6, 0x5a0

    const/16 v7, 0x7d0

    const-string v2, "V_2K"

    const/4 v3, 0x1

    const-string v4, "2K"

    const/16 v5, 0xa00

    invoke-direct/range {v1 .. v7}, Lcom/cutsame/solution/compile/ExportResolution;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/cutsame/solution/compile/ExportResolution;->V_2K:Lcom/cutsame/solution/compile/ExportResolution;

    .line 3
    new-instance v2, Lcom/cutsame/solution/compile/ExportResolution;

    const/16 v7, 0x438

    const/16 v8, 0x438

    const-string v3, "V_1080P"

    const/4 v4, 0x2

    const-string v5, "1080p"

    const/16 v6, 0x780

    invoke-direct/range {v2 .. v8}, Lcom/cutsame/solution/compile/ExportResolution;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/cutsame/solution/compile/ExportResolution;->V_1080P:Lcom/cutsame/solution/compile/ExportResolution;

    .line 4
    new-instance v3, Lcom/cutsame/solution/compile/ExportResolution;

    const/16 v8, 0x2d0

    const/16 v9, 0x2d0

    const-string v4, "V_720P"

    const/4 v5, 0x3

    const-string v6, "720p"

    const/16 v7, 0x500

    invoke-direct/range {v3 .. v9}, Lcom/cutsame/solution/compile/ExportResolution;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/cutsame/solution/compile/ExportResolution;->V_720P:Lcom/cutsame/solution/compile/ExportResolution;

    .line 5
    new-instance v4, Lcom/cutsame/solution/compile/ExportResolution;

    const/16 v9, 0x1e0

    const/16 v10, 0x1e0

    const-string v5, "V_480P"

    const/4 v6, 0x4

    const-string v7, "480p"

    const/16 v8, 0x35a

    invoke-direct/range {v4 .. v10}, Lcom/cutsame/solution/compile/ExportResolution;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/cutsame/solution/compile/ExportResolution;->V_480P:Lcom/cutsame/solution/compile/ExportResolution;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/cutsame/solution/compile/ExportResolution;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/cutsame/solution/compile/ExportResolution;->$VALUES:[Lcom/cutsame/solution/compile/ExportResolution;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cutsame/solution/compile/ExportResolution;->a:Ljava/lang/String;

    iput p4, p0, Lcom/cutsame/solution/compile/ExportResolution;->b:I

    iput p5, p0, Lcom/cutsame/solution/compile/ExportResolution;->c:I

    iput p6, p0, Lcom/cutsame/solution/compile/ExportResolution;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cutsame/solution/compile/ExportResolution;
    .registers 2

    const-class v0, Lcom/cutsame/solution/compile/ExportResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cutsame/solution/compile/ExportResolution;

    return-object p0
.end method

.method public static values()[Lcom/cutsame/solution/compile/ExportResolution;
    .registers 1

    sget-object v0, Lcom/cutsame/solution/compile/ExportResolution;->$VALUES:[Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cutsame/solution/compile/ExportResolution;

    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/ExportResolution;->c:I

    return p0
.end method

.method public final getLevel()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/ExportResolution;->d:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/compile/ExportResolution;->b:I

    return p0
.end method
