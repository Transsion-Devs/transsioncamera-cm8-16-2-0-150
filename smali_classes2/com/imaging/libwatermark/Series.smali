.class public final enum Lcom/imaging/libwatermark/Series;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaging/libwatermark/Series;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/imaging/libwatermark/Series;

.field public static final enum CAMON:Lcom/imaging/libwatermark/Series;

.field public static final enum FANS:Lcom/imaging/libwatermark/Series;

.field public static final enum GT:Lcom/imaging/libwatermark/Series;

.field public static final enum HOT:Lcom/imaging/libwatermark/Series;

.field public static final enum NOTE:Lcom/imaging/libwatermark/Series;

.field public static final enum POP:Lcom/imaging/libwatermark/Series;

.field public static final enum POVA:Lcom/imaging/libwatermark/Series;

.field public static final enum SPARK:Lcom/imaging/libwatermark/Series;

.field public static final enum ZERO:Lcom/imaging/libwatermark/Series;


# direct methods
.method private static final synthetic $values()[Lcom/imaging/libwatermark/Series;
    .registers 9

    sget-object v0, Lcom/imaging/libwatermark/Series;->NOTE:Lcom/imaging/libwatermark/Series;

    sget-object v1, Lcom/imaging/libwatermark/Series;->CAMON:Lcom/imaging/libwatermark/Series;

    sget-object v2, Lcom/imaging/libwatermark/Series;->POVA:Lcom/imaging/libwatermark/Series;

    sget-object v3, Lcom/imaging/libwatermark/Series;->SPARK:Lcom/imaging/libwatermark/Series;

    sget-object v4, Lcom/imaging/libwatermark/Series;->ZERO:Lcom/imaging/libwatermark/Series;

    sget-object v5, Lcom/imaging/libwatermark/Series;->HOT:Lcom/imaging/libwatermark/Series;

    sget-object v6, Lcom/imaging/libwatermark/Series;->POP:Lcom/imaging/libwatermark/Series;

    sget-object v7, Lcom/imaging/libwatermark/Series;->GT:Lcom/imaging/libwatermark/Series;

    sget-object v8, Lcom/imaging/libwatermark/Series;->FANS:Lcom/imaging/libwatermark/Series;

    filled-new-array/range {v0 .. v8}, [Lcom/imaging/libwatermark/Series;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "NOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->NOTE:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "CAMON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->CAMON:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "POVA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->POVA:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "SPARK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->SPARK:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "ZERO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->ZERO:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "HOT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->HOT:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "POP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->POP:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "GT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->GT:Lcom/imaging/libwatermark/Series;

    new-instance v0, Lcom/imaging/libwatermark/Series;

    const-string v1, "FANS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/Series;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/Series;->FANS:Lcom/imaging/libwatermark/Series;

    invoke-static {}, Lcom/imaging/libwatermark/Series;->$values()[Lcom/imaging/libwatermark/Series;

    move-result-object v0

    sput-object v0, Lcom/imaging/libwatermark/Series;->$VALUES:[Lcom/imaging/libwatermark/Series;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/imaging/libwatermark/Series;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/imaging/libwatermark/Series;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaging/libwatermark/Series;
    .registers 2

    const-class v0, Lcom/imaging/libwatermark/Series;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 47
    check-cast p0, Lcom/imaging/libwatermark/Series;

    return-object p0
.end method

.method public static values()[Lcom/imaging/libwatermark/Series;
    .registers 1

    sget-object v0, Lcom/imaging/libwatermark/Series;->$VALUES:[Lcom/imaging/libwatermark/Series;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, [Lcom/imaging/libwatermark/Series;

    return-object v0
.end method
