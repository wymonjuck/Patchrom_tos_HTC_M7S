.class public Lcom/tencent/qrom/interpolator/CubicEaseOutInterpolator;
.super Lcom/tencent/qrom/interpolator/BaseInterpolator;
.source "CubicEaseOutInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tencent/qrom/interpolator/BaseInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 1
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    .line 9
    div-float/2addr p1, p4

    mul-float v0, p3, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
