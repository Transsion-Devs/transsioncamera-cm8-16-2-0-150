.class public final enum Lcom/ss/android/vesdk/VEEditor$VEState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VEState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$VEState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum COMPLETED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum INITIALIZED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum NOTHING:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

.field public static final enum STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 877
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    const v1, 0xffff

    const-string v2, "ANY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 878
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v2, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 879
    new-instance v2, Lcom/ss/android/vesdk/VEEditor$VEState;

    const/high16 v3, 0x100000

    const-string v5, "NOTHING"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->NOTHING:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 880
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v5, "IDLE"

    const/4 v7, 0x3

    invoke-direct {v3, v5, v7, v4}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 881
    new-instance v4, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v5, "INITIALIZED"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ss/android/vesdk/VEEditor$VEState;->INITIALIZED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 882
    new-instance v5, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v6, "PREPARED"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ss/android/vesdk/VEEditor$VEState;->PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 883
    new-instance v6, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v7, "STARTED"

    const/4 v8, 0x6

    const/16 v9, 0x8

    invoke-direct {v6, v7, v8, v9}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 884
    new-instance v7, Lcom/ss/android/vesdk/VEEditor$VEState;

    const/4 v8, 0x7

    const/16 v10, 0x10

    const-string v11, "PAUSED"

    invoke-direct {v7, v11, v8, v10}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 885
    new-instance v8, Lcom/ss/android/vesdk/VEEditor$VEState;

    const-string v10, "SEEKING"

    const/16 v11, 0x20

    invoke-direct {v8, v10, v9, v11}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 886
    new-instance v9, Lcom/ss/android/vesdk/VEEditor$VEState;

    const/16 v10, 0x9

    const/16 v11, 0x40

    const-string v12, "STOPPED"

    invoke-direct {v9, v12, v10, v11}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ss/android/vesdk/VEEditor$VEState;->STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 887
    new-instance v10, Lcom/ss/android/vesdk/VEEditor$VEState;

    const/16 v11, 0xa

    const/16 v12, 0x80

    const-string v13, "COMPLETED"

    invoke-direct {v10, v13, v11, v12}, Lcom/ss/android/vesdk/VEEditor$VEState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ss/android/vesdk/VEEditor$VEState;->COMPLETED:Lcom/ss/android/vesdk/VEEditor$VEState;

    .line 876
    filled-new-array/range {v0 .. v10}, [Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VEState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 891
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 892
    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$VEState;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/ss/android/vesdk/VEEditor$VEState;
    .registers 2

    if-eqz p0, :cond_48

    const/4 v0, 0x1

    if-eq p0, v0, :cond_45

    const/4 v0, 0x2

    if-eq p0, v0, :cond_42

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x10

    if-eq p0, v0, :cond_39

    const/16 v0, 0x20

    if-eq p0, v0, :cond_36

    const/16 v0, 0x40

    if-eq p0, v0, :cond_33

    const/16 v0, 0x80

    if-eq p0, v0, :cond_30

    const v0, 0xffff

    if-eq p0, v0, :cond_2d

    const/high16 v0, 0x100000

    if-eq p0, v0, :cond_2a

    const/4 p0, 0x0

    return-object p0

    .line 908
    :cond_2a
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->NOTHING:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 904
    :cond_2d
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->ANY:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 924
    :cond_30
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->COMPLETED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 922
    :cond_33
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 920
    :cond_36
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 918
    :cond_39
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 916
    :cond_3c
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 914
    :cond_3f
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 912
    :cond_42
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->INITIALIZED:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 910
    :cond_45
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0

    .line 906
    :cond_48
    sget-object p0, Lcom/ss/android/vesdk/VEEditor$VEState;->ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$VEState;
    .registers 2

    .line 876
    const-class v0, Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$VEState;
    .registers 1

    .line 876
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$VEState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$VEState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 931
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor$VEState;->mValue:I

    return p0
.end method
