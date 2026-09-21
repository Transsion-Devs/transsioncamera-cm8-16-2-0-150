.class abstract synthetic Lcom/transsion/camera/app/ui/widget/GraduationView$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/GraduationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1065
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->values()[Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    :try_start_9
    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_2500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_3000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_400:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_800:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_2500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_3000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_10000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    return-void
.end method
