.class public final enum Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PickerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

.field public static final enum MULTI:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

.field public static final enum SINGLE:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;


# direct methods
.method private static final synthetic $values()[Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;
    .registers 2

    sget-object v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;->SINGLE:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    sget-object v1, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;->MULTI:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    filled-new-array {v0, v1}, [Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;->SINGLE:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    .line 68
    new-instance v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    const-string v1, "MULTI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;->MULTI:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    invoke-static {}, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;->$values()[Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;->$VALUES:[Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;
    .registers 2

    const-class v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;
    .registers 1

    sget-object v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;->$VALUES:[Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;

    return-object v0
.end method
